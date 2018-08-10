.class public Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;
.super Ljava/lang/Object;
.source "SemLocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/SemLocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;-><init>(Lcom/android/internal/app/LocalePicker$LocaleInfo;)V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    return-object v0
.end method
