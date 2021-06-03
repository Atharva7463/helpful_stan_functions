  /** @addtogroup logical_array Logical functions for arrays
   * \ingroup array
   *  @{ */
  
 /**
   * Checks whether real numbers are finite and ordered
   * 
   * @copyright Ben Goodrich 2020
   * @param theta real array of numbers
   * @throws if real numbers are not finite or not ordered
   * @return 1 if real numbers are finite and ordered
   */
  int in_order(real[] theta) {
    if (num_elements(theta) != 5) reject("wrong number of elements");
    if (theta[1] == negative_infinity()) reject("first element must be finite");
    for (k in 2:5) if (theta[k] <= theta[k - 1]) 
      reject("bounds and quantiles are not in the right order");
    return 1;
  }
 /** @} */  
