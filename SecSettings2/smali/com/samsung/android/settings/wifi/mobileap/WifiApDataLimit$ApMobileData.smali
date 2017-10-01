.class Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;
.super Ljava/lang/Object;
.source "WifiApDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApMobileData"
.end annotation


# instance fields
.field private apContext:Landroid/content/Context;

.field private limit:Ljava/math/BigDecimal;

.field private limitText:Ljava/lang/String;

.field private limitUnit:Ljava/lang/String;

.field private limited:Z

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

.field private usage:Ljava/math/BigDecimal;

.field private usageText:Ljava/lang/String;

.field private usageUnit:Ljava/lang/String;


# virtual methods
.method getLimitedUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limitUnit:Ljava/lang/String;

    return-object v0
.end method

.method getLimitedValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limitText:Ljava/lang/String;

    return-object v0
.end method

.method getMobileDataLimited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limited:Z

    return v0
.end method

.method getUsageUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usageUnit:Ljava/lang/String;

    return-object v0
.end method

.method getUsageValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usageText:Ljava/lang/String;

    return-object v0
.end method

.method setLimitValue(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limited:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limited:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_mobile_data_limit"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limit:Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_mobile_data_limit_value"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limit:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->updateApMobileDataLimit()V

    return-void
.end method

.method setMobileDataUnLimited()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_mobile_data_limit"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limited:Z

    return-void
.end method

.method updateApMobileDataLimit()V
    .locals 6

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_mobile_data_limit"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limited:Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "wifi_ap_mobile_data_limit_value"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WifiApDataLimit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new Mobile AP Limit Data value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limit:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limit:Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limit:Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limitText:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limitUnit:Ljava/lang/String;

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limit:Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limitText:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->limitUnit:Ljava/lang/String;

    goto :goto_1
.end method

.method updateUsageValue()V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_mobile_data_usage_value"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usage:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usage:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usage:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usageText:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0e37

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usageUnit:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usage:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usage:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usageText:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usageUnit:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usage:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usageText:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->apContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->usageUnit:Ljava/lang/String;

    goto :goto_1
.end method
