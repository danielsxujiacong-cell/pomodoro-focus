create table if not exists public.user_state (
  user_id uuid primary key references auth.users (id) on delete cascade,
  total_focus_sessions integer not null default 0 check (total_focus_sessions >= 0),
  total_focus_minutes integer not null default 0 check (total_focus_minutes >= 0),
  cycle_count integer not null default 0 check (cycle_count between 0 and 4),
  cycle_date date not null default current_date,
  current_plant_minutes integer not null default 0 check (current_plant_minutes >= 0),
  matured_tomatoes integer not null default 0 check (matured_tomatoes >= 0),
  settings jsonb not null default '{"focus":25,"short":5,"long":15}'::jsonb
    check (jsonb_typeof(settings) = 'object'),
  updated_at timestamptz not null default now()
);

alter table public.user_state enable row level security;

revoke all on table public.user_state from anon;
grant select, insert, update, delete on table public.user_state to authenticated;

drop policy if exists "Users can read their own state" on public.user_state;
create policy "Users can read their own state"
  on public.user_state for select to authenticated
  using ((select auth.uid()) = user_id);

drop policy if exists "Users can insert their own state" on public.user_state;
create policy "Users can insert their own state"
  on public.user_state for insert to authenticated
  with check ((select auth.uid()) = user_id);

drop policy if exists "Users can update their own state" on public.user_state;
create policy "Users can update their own state"
  on public.user_state for update to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

drop policy if exists "Users can delete their own state" on public.user_state;
create policy "Users can delete their own state"
  on public.user_state for delete to authenticated
  using ((select auth.uid()) = user_id);
