.class Lcom/sec/android/app/sysscope/engine/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sysscope/engine/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sec/android/app/sysscope/engine/h;Lcom/sec/android/app/sysscope/engine/h;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sysscope/engine/h;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/sysscope/engine/h;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/sysscope/engine/h;

    check-cast p2, Lcom/sec/android/app/sysscope/engine/h;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sysscope/engine/g;->a(Lcom/sec/android/app/sysscope/engine/h;Lcom/sec/android/app/sysscope/engine/h;)I

    move-result v0

    return v0
.end method
