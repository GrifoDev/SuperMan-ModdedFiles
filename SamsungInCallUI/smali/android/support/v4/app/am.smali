.class public final Landroid/support/v4/app/am;
.super Landroid/support/v4/app/ao$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/am$b;,
        Landroid/support/v4/app/am$d;,
        Landroid/support/v4/app/am$c;,
        Landroid/support/v4/app/am$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/support/v4/app/ao$a$a;

.field private static final g:Landroid/support/v4/app/am$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/CharSequence;

.field private final d:[Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/am$b;

    invoke-direct {v0}, Landroid/support/v4/app/am$b;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->g:Landroid/support/v4/app/am$a;

    :goto_0
    new-instance v0, Landroid/support/v4/app/am$1;

    invoke-direct {v0}, Landroid/support/v4/app/am$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/ao$a$a;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/am$d;

    invoke-direct {v0}, Landroid/support/v4/app/am$d;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->g:Landroid/support/v4/app/am$a;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/app/am$c;

    invoke-direct {v0}, Landroid/support/v4/app/am$c;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->g:Landroid/support/v4/app/am$a;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/am;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/am;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/am;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/am;->e:Z

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/am;->f:Landroid/os/Bundle;

    return-object v0
.end method
