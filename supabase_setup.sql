create table progress (
  id uuid default gen_random_uuid() primary key,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  date date not null,
  weight numeric(5,2),
  fat numeric(5,2),
  muscle numeric(5,2),
  water numeric(5,2),
  sleep numeric(4,1),
  energy integer,
  days integer,
  diet integer,
  notes text
);

alter table progress enable row level security;

create policy "Allow all" on progress
  for all using (true) with check (true);
