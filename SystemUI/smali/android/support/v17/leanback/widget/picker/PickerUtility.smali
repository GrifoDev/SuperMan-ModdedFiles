.class Landroid/support/v17/leanback/widget/picker/PickerUtility;
.super Ljava/lang/Object;
.source "PickerUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;,
        Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;
    .locals 6

    sub-int v2, p1, p0

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move v1, p0

    :goto_0
    if-gt v1, p1, :cond_1

    if-eqz p2, :cond_0

    sub-int v2, v1, p0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int v2, v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 4

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2
.end method

.method public static getDateConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;-><init>(Ljava/util/Locale;Landroid/content/res/Resources;Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;)V

    return-object v0
.end method

.method public static getTimeConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;-><init>(Ljava/util/Locale;Landroid/content/res/Resources;Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;)V

    return-object v0
.end method
