#include "finances.h"

float applyTax(float price, float amount) {
    return price * (1 + (amount/100));
}