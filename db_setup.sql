-- ============================================================
--  E-Commerce DB Setup — run once to create tables + seed data
-- ============================================================

CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

CREATE TABLE IF NOT EXISTS products (
  id          INT AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(255)   NOT NULL,
  description TEXT,
  price       DECIMAL(10, 2) NOT NULL,
  image_url   VARCHAR(500),
  category    VARCHAR(100),
  stock       INT            DEFAULT 0,
  rating      DECIMAL(2, 1)  DEFAULT 0.0,
  created_at  TIMESTAMP      DEFAULT CURRENT_TIMESTAMP,
  updated_at  TIMESTAMP      DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Seed Data
INSERT INTO products (name, description, price, image_url, category, stock, rating) VALUES
('Wireless Noise-Cancelling Headphones', 'Premium over-ear headphones with 30-hour battery and adaptive noise cancellation.', 79.99, 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400', 'Electronics', 45, 4.8),
('Minimalist Leather Wallet', 'Slim RFID-blocking genuine leather wallet. Holds up to 8 cards.', 34.99, 'https://images.unsplash.com/photo-1627123424574-724758594e93?w=400', 'Accessories', 120, 4.6),
('Smart Fitness Watch', 'Track your health 24/7 with GPS, heart rate monitor, and 7-day battery life.', 129.99, 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400', 'Electronics', 30, 4.7),
('Ceramic Pour-Over Coffee Set', 'Hand-crafted ceramic dripper and server set for the perfect morning brew.', 48.00, 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=400', 'Kitchen', 60, 4.9),
('Linen Button-Down Shirt', 'Breathable summer linen shirt, relaxed fit. Available in 6 neutral colours.', 59.99, 'https://images.unsplash.com/photo-1596755094514-f87e34085b2c?w=400', 'Clothing', 85, 4.4),
('Portable Bluetooth Speaker', 'Waterproof IPX7 speaker with 360° rich sound and 20-hour playtime.', 54.99, 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=400', 'Electronics', 55, 4.5),
('Scented Soy Candle Set', 'Set of 3 hand-poured soy wax candles in amber, cedar, and vanilla scents.', 29.99, 'https://images.unsplash.com/photo-1602928321679-560bb453f190?w=400', 'Home', 200, 4.7),
('Trail Running Shoes', 'Lightweight trail shoes with responsive cushioning and aggressive grip outsole.', 99.99, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400', 'Footwear', 40, 4.6),
('Mechanical Keyboard', 'Compact 75% layout with tactile brown switches and per-key RGB lighting.', 89.99, 'https://images.unsplash.com/photo-1601445638532-3c6f6c3aa1d6?w=400', 'Electronics', 25, 4.8),
('Bamboo Cutting Board', 'Extra-large bamboo board with juice groove and non-slip feet.', 24.99, 'https://images.unsplash.com/photo-1584568694244-14fbdf83bd30?w=400', 'Kitchen', 150, 4.5),
('Sunglasses Classic Aviator', 'UV400 polarised lenses with gold stainless steel frame.', 44.99, 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=400', 'Accessories', 70, 4.3),
('Yoga Mat Premium', '6mm non-slip natural rubber mat with alignment lines and carry strap.', 65.00, 'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=400', 'Sports', 90, 4.7);
