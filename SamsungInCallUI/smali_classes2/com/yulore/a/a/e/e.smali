.class public Lcom/yulore/a/a/e/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/a/a/e/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/Context;

.field private e:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Lcom/yulore/a/a/e/e$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/yulore/a/a/e/e$a;->a(Lcom/yulore/a/a/e/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/a/a/e/e;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/yulore/a/a/e/e$a;->b(Lcom/yulore/a/a/e/e$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/a/a/e/e;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/yulore/a/a/e/e$a;->c(Lcom/yulore/a/a/e/e$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/a/a/e/e;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/yulore/a/a/e/e$a;->d(Lcom/yulore/a/a/e/e$a;)I

    move-result v0

    iput v0, p0, Lcom/yulore/a/a/e/e;->b:I

    iget-object v0, p0, Lcom/yulore/a/a/e/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/yulore/a/a/e/e;->a:Ljava/lang/String;

    iget v2, p0, Lcom/yulore/a/a/e/e;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/a/a/e/e;->e:Landroid/content/SharedPreferences;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yulore/a/a/e/e$a;Lcom/yulore/a/a/e/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yulore/a/a/e/e;-><init>(Lcom/yulore/a/a/e/e$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/e/e;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/yulore/a/a/e/e;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/e/e;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/e/e;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/yulore/a/a/e/e;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
