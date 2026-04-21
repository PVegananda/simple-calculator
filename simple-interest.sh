#!/bin/bash

# Simple Interest Calculator
# This script calculates simple interest based on principal, rate, and time period

echo "================================================"
echo "        Simple Interest Calculator"
echo "================================================"
echo ""

# Prompt user for principal amount
echo "Enter the principal amount (P): "
read principal

# Validate principal input
if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]{1,2})?$ ]]; then
    echo "Error: Principal must be a valid number"
    exit 1
fi

# Prompt user for rate of interest
echo "Enter the rate of interest (R) per annum (%): "
read rate

# Validate rate input
if ! [[ "$rate" =~ ^[0-9]+(\.[0-9]{1,2})?$ ]]; then
    echo "Error: Rate must be a valid number"
    exit 1
fi

# Prompt user for time period
echo "Enter the time period (T) in years: "
read time

# Validate time input
if ! [[ "$time" =~ ^[0-9]+(\.[0-9]{1,2})?$ ]]; then
    echo "Error: Time period must be a valid number"
    exit 1
fi

# Calculate simple interest using formula: SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount (Principal + Simple Interest)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo ""
echo "================================================"
echo "                    RESULTS"
echo "================================================"
echo "Principal Amount (P):    \$$principal"
echo "Rate of Interest (R):    $rate% per annum"
echo "Time Period (T):         $time years"
echo "Simple Interest (SI):    \$$simple_interest"
echo "Total Amount:            \$$total_amount"
echo "================================================"
echo ""
