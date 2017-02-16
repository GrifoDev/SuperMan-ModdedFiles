.class Lsun/misc/SoftCache$ValueCell;
.super Ljava/lang/ref/SoftReference;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueCell"
.end annotation


# static fields
.field private static INVALID_KEY:Ljava/lang/Object;

.field private static dropped:I


# instance fields
.field private key:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    return v0
.end method

.method static synthetic -get1(Lsun/misc/SoftCache$ValueCell;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    return p0
.end method

.method static synthetic -wrap0(Lsun/misc/SoftCache$ValueCell;)Z
    .locals 1

    invoke-direct {p0}, Lsun/misc/SoftCache$ValueCell;->isValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "val"    # Ljava/lang/Object;
    .param p1, "drop"    # Z

    .prologue
    invoke-static {p0, p1}, Lsun/misc/SoftCache$ValueCell;->strip(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    invoke-static {p0, p1, p2}, Lsun/misc/SoftCache$ValueCell;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    sput v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    .line 118
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    .line 124
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 125
    iput-object p1, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    const/4 v0, 0x0

    .line 131
    if-nez p1, :cond_0

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Lsun/misc/SoftCache$ValueCell;

    invoke-direct {v0, p0, p1, p2}, Lsun/misc/SoftCache$ValueCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method private drop()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 149
    sget-object v0, Lsun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    iput-object v0, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    .line 150
    sget v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    .line 147
    return-void
.end method

.method private isValid()Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    sget-object v1, Lsun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static strip(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "val"    # Ljava/lang/Object;
    .param p1, "drop"    # Z

    .prologue
    const/4 v2, 0x0

    .line 136
    if-nez p0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 137
    check-cast v1, Lsun/misc/SoftCache$ValueCell;

    .line 138
    .local v1, "vc":Lsun/misc/SoftCache$ValueCell;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "o":Ljava/lang/Object;
    if-eqz p1, :cond_1

    invoke-direct {v1}, Lsun/misc/SoftCache$ValueCell;->drop()V

    .line 140
    :cond_1
    return-object v0
.end method
