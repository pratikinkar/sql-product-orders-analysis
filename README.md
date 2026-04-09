# SQL Product and Order Analysis Project

## Overview
This project is a basic SQL database project built to manage products and customer orders. It includes table creation, foreign key relationships, and multiple SQL queries for analysis.

## Database Tables
### 1. products
Stores product details such as:
- product_id
- product_name
- category
- price
- stock_quantity
- is_available
- added_on

### 2. orders
Stores order details such as:
- order_id
- product_id
- quantity
- order_date
- customer_name
- payment_method

## Features
- Create products and orders tables
- Apply primary key and foreign key constraints
- Use joins to combine product and order data
- Filter products by category
- Sort products by price
- Count total orders for each product
- Calculate total revenue per product
- Find products with revenue greater than 2000
- Display customers who ordered Fitness category products

## SQL Concepts Used
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- INNER JOIN
- FULL JOIN
- LEFT JOIN
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate functions like COUNT() and SUM()

## Project Queries Included
- Show all products
- Show all orders
- Join products and orders
- Show order details with customer name and product price
- Show products that were never ordered
- Show only Electronics category orders
- Sort product prices from high to low
- Count orders for each product
- Calculate revenue for each product
- Show products with revenue above 2000
- Show customers who ordered Fitness products

## Purpose
This project helps in practicing SQL database design and query writing for real-world business cases like inventory management, sales tracking, and order analysis.

## Tools Used
- SQL
- PostgreSQL / MySQL-compatible syntax

## Author
Pratik Inkar
