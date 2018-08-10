.class final Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
.super Ljava/lang/Object;
.source "SeslBackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field cmd:I

.field enterAnim:I

.field exitAnim:I

.field fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field popEnterAnim:I

.field popExitAnim:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    return-void
.end method
