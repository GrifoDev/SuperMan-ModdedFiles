.class final Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;
.super Ljava/lang/Object;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyguardTimePatterns"
.end annotation


# static fields
.field private static cacheKey:Ljava/lang/String;

.field public static clockView12:Ljava/lang/String;

.field public static clockView24:Ljava/lang/String;

.field public static dateView:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->update(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static update(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->keyguard_clock_page_date_format:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/android/keyguard/R$string;->clock_12hr_format:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v6, Lcom/android/keyguard/R$string;->clock_24hr_format:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->cacheKey:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    invoke-static {v4, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->dateView:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    const-string/jumbo v6, "a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    const-string/jumbo v7, "a"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    :cond_1
    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView24:Ljava/lang/String;

    sput-object v3, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->cacheKey:Ljava/lang/String;

    return-void
.end method
