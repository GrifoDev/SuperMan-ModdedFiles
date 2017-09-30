.class Lcom/thoughtworks/xstream/core/JVM$Test;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/JVM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Test"
.end annotation


# instance fields
.field private b:B

.field private bool:Z

.field private c:C

.field private d:D

.field private f:F

.field private i:I

.field private l:J

.field private o:Ljava/lang/Object;

.field private s:S


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
