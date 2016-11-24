# ExcludeGiftCardSelector
# =============
#
# The `ExcludeGiftCardSelector` removes gift cards since they are ofter excluded
# from promotions.
class ExcludeGiftCardSelector
  # Returns whether a line item matches this selector or not.
  #
  # Arguments
  # ---------
  #
  # * line_item
  #   The item to check for matching.
  def match?(line_item)
    !line_item.variant.product.gift_card?
  end
end
