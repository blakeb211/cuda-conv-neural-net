#pragma once

#include <blas.cuh>

Storage *operator_log_softmax(const Storage *input1, std::size_t dim);

Storage *operator_d_log_softmax(const Storage *input1, std::size_t dim,
                                const Storage *output_grads);