.class public final Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;
.super Ljava/lang/Object;
.source "SeslTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatApi23Impl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatApi26Impl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatBaseImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatBaseImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatBaseImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatApi26Impl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatApi26Impl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatBaseImpl;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatApi23Impl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatApi23Impl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatBaseImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 1
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatBaseImpl;->setTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method
