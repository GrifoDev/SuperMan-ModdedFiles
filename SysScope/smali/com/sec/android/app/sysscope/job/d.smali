.class final Lcom/sec/android/app/sysscope/job/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sec/android/app/sysscope/job/e;Lcom/sec/android/app/sysscope/job/e;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p1, Lcom/sec/android/app/sysscope/job/e;->l:I

    iget v3, p1, Lcom/sec/android/app/sysscope/job/e;->m:I

    add-int/2addr v2, v3

    iget v3, p2, Lcom/sec/android/app/sysscope/job/e;->l:I

    iget v4, p2, Lcom/sec/android/app/sysscope/job/e;->m:I

    add-int/2addr v3, v4

    if-eq v2, v3, :cond_2

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->s:Z

    iget-boolean v3, p2, Lcom/sec/android/app/sysscope/job/e;->s:Z

    if-eq v2, v3, :cond_3

    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->s:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->t:Z

    iget-boolean v3, p2, Lcom/sec/android/app/sysscope/job/e;->t:Z

    if-eq v2, v3, :cond_4

    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->t:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/sysscope/job/e;

    check-cast p2, Lcom/sec/android/app/sysscope/job/e;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sysscope/job/d;->a(Lcom/sec/android/app/sysscope/job/e;Lcom/sec/android/app/sysscope/job/e;)I

    move-result v0

    return v0
.end method
