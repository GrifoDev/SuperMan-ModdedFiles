.class public final Lcom/samsung/android/framework/res/R$interpolator;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/framework/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "interpolator"
.end annotation


# static fields
.field public static deceleration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/high16 v0, 0x50000

    sput v0, Lcom/samsung/android/framework/res/R$interpolator;->deceleration:I

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
