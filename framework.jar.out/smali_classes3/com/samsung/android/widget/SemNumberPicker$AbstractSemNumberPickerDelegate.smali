.class abstract Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;
.super Ljava/lang/Object;
.source "SemNumberPicker.java"

# interfaces
.implements Lcom/samsung/android/widget/SemNumberPicker$SemNumberPickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractSemNumberPickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDelegator:Lcom/samsung/android/widget/SemNumberPicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemNumberPicker;Landroid/content/Context;)V
    .locals 0
    .param p1, "delegator"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    .line 995
    iput-object p2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    .line 993
    return-void
.end method
