.class Lcom/android/internal/os/FuseAppLoop$Args;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/FuseAppLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Args"
.end annotation


# instance fields
.field data:[B

.field entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

.field inode:J

.field offset:J

.field size:I

.field unique:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>()V

    return-void
.end method
