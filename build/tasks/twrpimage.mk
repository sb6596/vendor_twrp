# TWRP image

TWRP_IMAGE := $(PRODUCT_OUT)/twrp-3.3.1-$(shell date -u +%Y%m%d)-$(TARGET_PRODUCT_SHORT).img

.PHONY: twrpimage
twrpimage: recoveryimage
	$(hide) ln -f $(PRODUCT_OUT)/recovery.img $(TWRP_IMAGE)
	@echo "Recovery Image Complete: $(TWRP_IMAGE)" >&2
