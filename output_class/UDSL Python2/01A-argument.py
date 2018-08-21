def product_in_units(i, j, k, *, units='square meters'):
    result = i * j * k
    return'{}{}'.format(result, units)

product_in_units(2,3,4)
