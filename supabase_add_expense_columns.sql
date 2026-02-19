-- monthly_expenses tablosuna Satış ve İnsan Kaynakları sütunları ekleme
-- Supabase SQL Editor'da çalıştırın

ALTER TABLE monthly_expenses
  ADD COLUMN IF NOT EXISTS satis_giderleri numeric DEFAULT 0,
  ADD COLUMN IF NOT EXISTS insan_kaynaklari_giderleri numeric DEFAULT 0;

-- Mevcut satırlara varsayılan değer ata (opsiyonel - ADD COLUMN DEFAULT zaten yapar)
-- UPDATE monthly_expenses SET satis_giderleri = 0 WHERE satis_giderleri IS NULL;
-- UPDATE monthly_expenses SET insan_kaynaklari_giderleri = 0 WHERE insan_kaynaklari_giderleri IS NULL;
