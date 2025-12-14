
-- =========================================
-- Crypto Trading Analysis - SQL Schema
-- Database: MySQL
-- =========================================

CREATE TABLE crypto_data (
    trade_date DATE NOT NULL,
    open_price DECIMAL(18,8),
    high_price DECIMAL(18,8),
    low_price DECIMAL(18,8),
    close_price DECIMAL(18,8),
    adj_close_price DECIMAL(18,8),
    volume BIGINT,
    daily_return DECIMAL(10,6),
    sma_21 DECIMAL(18,8),
    sma_50 DECIMAL(18,8),
    volatility DECIMAL(10,6),
    trade_signal TINYINT,
    strategy_return DECIMAL(10,6),
    crypto VARCHAR(10),
    PRIMARY KEY (trade_date, crypto)
);

-- Optional index for faster filtering
CREATE INDEX idx_crypto ON crypto_data (crypto);
