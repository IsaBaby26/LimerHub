CREATE TABLE anuncios (
  id uuid primary key default gen_random_uuid(),
  titulo text not null,
  descricao text,
  preco numeric,
  categoria text,
  bairro text,
  imagem text,
  whatsapp text,
  usuario_id uuid references auth.users(id),
  criado_em timestamp default now()
);