# GymPlan · Pablo

Dashboard de entrenamiento y nutrición con tracking de progreso.

## Setup Supabase

Ejecuta este SQL en el SQL Editor de Supabase:

```sql
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
```

## Deploy en Vercel

1. Sube este proyecto a GitHub
2. Conecta el repo en vercel.com
3. Vercel detecta vercel.json automáticamente
4. Deploy listo

## Instalar en iPhone

1. Abre la URL de Vercel en Safari
2. Pulsa el botón compartir (cuadrado con flecha)
3. Selecciona "Añadir a pantalla de inicio"
4. Ya tienes el icono como una app
