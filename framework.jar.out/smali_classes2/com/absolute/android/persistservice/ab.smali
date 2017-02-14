.class Lcom/absolute/android/persistservice/ab;
.super Landroid/os/FileObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/y;

.field private b:Lcom/absolute/android/persistservice/ac;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ac;)V
    .locals 2

    iput-object p1, p0, Lcom/absolute/android/persistservice/ab;->a:Lcom/absolute/android/persistservice/y;

    iget-object v0, p2, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/absolute/android/persistservice/ab;->b:Lcom/absolute/android/persistservice/ac;

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ab;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/absolute/android/persistservice/ab;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ab;)Lcom/absolute/android/persistservice/ac;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ab;->b:Lcom/absolute/android/persistservice/ac;

    return-object v0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->b:Lcom/absolute/android/persistservice/ac;

    iget-object v1, v1, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ab;->b:Lcom/absolute/android/persistservice/ac;

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/absolute/android/persistservice/ab;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->a:Lcom/absolute/android/persistservice/y;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/y;Ljava/lang/String;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
