.class public Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;
.super Ljava/lang/Object;
.source "PickerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/PickerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateConstant"
.end annotation


# instance fields
.field public final dateSeparator:Ljava/lang/String;

.field public final days:[Ljava/lang/String;

.field public final locale:Ljava/util/Locale;

.field public final months:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Locale;Landroid/content/res/Resources;)V
    .locals 5

    const/4 v3, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v3

    const-string/jumbo v4, "%02d"

    invoke-static {v2, v3, v4}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->days:[Ljava/lang/String;

    sget v2, Landroid/support/v17/leanback/R$string;->lb_date_separator:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->dateSeparator:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Landroid/content/res/Resources;Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;-><init>(Ljava/util/Locale;Landroid/content/res/Resources;)V

    return-void
.end method
