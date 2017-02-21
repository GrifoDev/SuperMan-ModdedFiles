.class public final Lcom/samsung/android/framework/res/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/framework/res/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static loading_screen_animation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0xa0000

    sput v0, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
