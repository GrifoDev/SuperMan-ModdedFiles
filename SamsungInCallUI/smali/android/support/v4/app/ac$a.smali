.class public Landroid/support/v4/app/ac$a;
.super Landroid/support/v4/app/ag$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final d:Landroid/support/v4/app/ag$a$a;


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/app/PendingIntent;

.field private final e:Landroid/os/Bundle;

.field private final f:[Landroid/support/v4/app/am;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/ac$a$1;

    invoke-direct {v0}, Landroid/support/v4/app/ac$a$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac$a;->d:Landroid/support/v4/app/ag$a$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ac$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/am;Z)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/am;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/ag$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ac$a;->g:Z

    iput p1, p0, Landroid/support/v4/app/ac$a;->a:I

    invoke-static {p2}, Landroid/support/v4/app/ac$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ac$a;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v4/app/ac$a;->c:Landroid/app/PendingIntent;

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/ac$a;->e:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/support/v4/app/ac$a;->f:[Landroid/support/v4/app/am;

    iput-boolean p6, p0, Landroid/support/v4/app/ac$a;->g:Z

    return-void

    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/ac$a;->a:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac$a;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac$a;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac$a;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/ac$a;->g:Z

    return v0
.end method

.method public f()[Landroid/support/v4/app/am;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac$a;->f:[Landroid/support/v4/app/am;

    return-object v0
.end method

.method public synthetic g()[Landroid/support/v4/app/ao$a;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/ac$a;->f()[Landroid/support/v4/app/am;

    move-result-object v0

    return-object v0
.end method
