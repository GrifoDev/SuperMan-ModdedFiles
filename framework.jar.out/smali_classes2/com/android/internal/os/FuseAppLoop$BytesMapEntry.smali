.class Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/FuseAppLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytesMapEntry"
.end annotation


# instance fields
.field bytes:[B

.field counter:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;->counter:I

    const/high16 v0, 0x40000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;-><init>()V

    return-void
.end method
