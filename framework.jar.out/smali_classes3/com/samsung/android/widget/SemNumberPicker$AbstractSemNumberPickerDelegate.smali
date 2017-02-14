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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iput-object p2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    return-void
.end method
