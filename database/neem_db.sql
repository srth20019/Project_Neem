-- NEEM Project Database Script
-- Insurance Samrongthap Hospital


-- ตาราง RightsType
CREATE TABLE RightsType (
    TypeId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ตาราง Fund
CREATE TABLE Fund (
    FundId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ตาราง ClaimMonth
CREATE TABLE ClaimMonth (
    MonthId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ตาราง BudgetYear
CREATE TABLE BudgetYear (
    YearId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ตาราง Role
CREATE TABLE Role (
    RoleId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ตาราง Users
CREATE TABLE Users (
    UserId INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(255) NOT NULL, -- เก็บเป็น Hash
    Email VARCHAR(100) NOT NULL,
    Fullname VARCHAR(100) NOT NULL,
    RoleId INT NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (RoleId) REFERENCES Role(RoleId)
);

-- ตาราง ClaimDetail
CREATE TABLE ClaimDetail (
    ClaimId INT PRIMARY KEY AUTO_INCREMENT,
    TypeId INT NOT NULL,
    FundId INT NOT NULL,
    MonthId INT NOT NULL,
    YearId INT NOT NULL,
    ClaimDate DATE NOT NULL,
    ClaimNumber VARCHAR(50) NOT NULL,
    ClaimUp INT NOT NULL,
    ClaimAmount DOUBLE NOT NULL,
    ResDate DATE NOT NULL,
    ResNumber VARCHAR(50) NOT NULL,
    PassA INT NOT NULL,
    CancelC INT NOT NULL,
    DataRecorder INT NOT NULL,
    Remark TEXT NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (TypeId) REFERENCES RightsType(TypeId),
    FOREIGN KEY (FundId) REFERENCES Fund(FundId),
    FOREIGN KEY (MonthId) REFERENCES ClaimMonth(MonthId),
    FOREIGN KEY (YearId) REFERENCES BudgetYear(YearId),
    FOREIGN KEY (DataRecorder) REFERENCES Users(UserId)
);