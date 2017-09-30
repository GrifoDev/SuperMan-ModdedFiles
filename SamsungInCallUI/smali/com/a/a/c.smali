.class public Lcom/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:I

.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/a/a/g;

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final e:Lcom/a/a/e/m;

.field protected final f:Lcom/a/a/e/g;

.field private g:Lcom/a/a/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/g/a",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field private i:Lcom/a/a/d/c;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/a/a/h/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/d",
            "<-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;

.field private o:Lcom/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c",
            "<***TTranscodeType;>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Float;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Lcom/a/a/i;

.field private t:Z

.field private u:Lcom/a/a/h/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/a/d",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Lcom/a/a/d/b/b;

.field private y:Lcom/a/a/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/g",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/a/a/g/f;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/e/m;Lcom/a/a/e/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/a/a/g/f",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/a/a/g;",
            "Lcom/a/a/e/m;",
            "Lcom/a/a/e/g;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/a/a/i/a;->a()Lcom/a/a/i/a;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/c;->i:Lcom/a/a/d/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    iput-object v0, p0, Lcom/a/a/c;->s:Lcom/a/a/i;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/a/a/c;->t:Z

    invoke-static {}, Lcom/a/a/h/a/e;->a()Lcom/a/a/h/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/c;->u:Lcom/a/a/h/a/d;

    iput v2, p0, Lcom/a/a/c;->v:I

    iput v2, p0, Lcom/a/a/c;->w:I

    sget-object v1, Lcom/a/a/d/b/b;->d:Lcom/a/a/d/b/b;

    iput-object v1, p0, Lcom/a/a/c;->x:Lcom/a/a/d/b/b;

    invoke-static {}, Lcom/a/a/d/d/d;->b()Lcom/a/a/d/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/c;->y:Lcom/a/a/d/g;

    iput-object p1, p0, Lcom/a/a/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/a/a/c;->a:Ljava/lang/Class;

    iput-object p4, p0, Lcom/a/a/c;->d:Ljava/lang/Class;

    iput-object p5, p0, Lcom/a/a/c;->c:Lcom/a/a/g;

    iput-object p6, p0, Lcom/a/a/c;->e:Lcom/a/a/e/m;

    iput-object p7, p0, Lcom/a/a/c;->f:Lcom/a/a/e/g;

    if-eqz p3, :cond_0

    new-instance v0, Lcom/a/a/g/a;

    invoke-direct {v0, p3}, Lcom/a/a/g/a;-><init>(Lcom/a/a/g/f;)V

    :cond_0
    iput-object v0, p0, Lcom/a/a/c;->g:Lcom/a/a/g/a;

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "LoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method constructor <init>(Lcom/a/a/g/f;Ljava/lang/Class;Lcom/a/a/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/g/f",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/a/a/c",
            "<TModelType;***>;)V"
        }
    .end annotation

    iget-object v1, p3, Lcom/a/a/c;->b:Landroid/content/Context;

    iget-object v2, p3, Lcom/a/a/c;->a:Ljava/lang/Class;

    iget-object v5, p3, Lcom/a/a/c;->c:Lcom/a/a/g;

    iget-object v6, p3, Lcom/a/a/c;->e:Lcom/a/a/e/m;

    iget-object v7, p3, Lcom/a/a/c;->f:Lcom/a/a/e/g;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/a/a/g/f;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/e/m;Lcom/a/a/e/g;)V

    iget-object v0, p3, Lcom/a/a/c;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/a/a/c;->h:Ljava/lang/Object;

    iget-boolean v0, p3, Lcom/a/a/c;->j:Z

    iput-boolean v0, p0, Lcom/a/a/c;->j:Z

    iget-object v0, p3, Lcom/a/a/c;->i:Lcom/a/a/d/c;

    iput-object v0, p0, Lcom/a/a/c;->i:Lcom/a/a/d/c;

    iget-object v0, p3, Lcom/a/a/c;->x:Lcom/a/a/d/b/b;

    iput-object v0, p0, Lcom/a/a/c;->x:Lcom/a/a/d/b/b;

    iget-boolean v0, p3, Lcom/a/a/c;->t:Z

    iput-boolean v0, p0, Lcom/a/a/c;->t:Z

    return-void
.end method

.method private a(Lcom/a/a/h/b/j;FLcom/a/a/i;Lcom/a/a/h/c;)Lcom/a/a/h/b;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/b/j",
            "<TTranscodeType;>;F",
            "Lcom/a/a/i;",
            "Lcom/a/a/h/c;",
            ")",
            "Lcom/a/a/h/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/c;->g:Lcom/a/a/g/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/c;->h:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/c;->i:Lcom/a/a/d/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/c;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/a/c;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/a/a/c;->k:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/a/a/c;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/a/a/c;->l:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/a/a/c;->B:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/a/a/c;->C:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/a/a/c;->m:Lcom/a/a/h/d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/c;->c:Lcom/a/a/g;

    invoke-virtual {v5}, Lcom/a/a/g;->b()Lcom/a/a/d/b/c;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/c;->y:Lcom/a/a/d/g;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/c;->d:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/a/a/c;->t:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/c;->u:Lcom/a/a/h/a/d;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/c;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/c;->v:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/c;->x:Lcom/a/a/d/b/b;

    move-object/from16 v23, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v23}, Lcom/a/a/h/a;->a(Lcom/a/a/g/f;Ljava/lang/Object;Lcom/a/a/d/c;Landroid/content/Context;Lcom/a/a/i;Lcom/a/a/h/b/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/a/a/h/d;Lcom/a/a/h/c;Lcom/a/a/d/b/c;Lcom/a/a/d/g;Ljava/lang/Class;ZLcom/a/a/h/a/d;IILcom/a/a/d/b/b;)Lcom/a/a/h/a;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/a/a/h/b/j;Lcom/a/a/h/f;)Lcom/a/a/h/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/b/j",
            "<TTranscodeType;>;",
            "Lcom/a/a/h/f;",
            ")",
            "Lcom/a/a/h/b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/c;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/a/a/c;->A:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/c;

    iget-object v0, v0, Lcom/a/a/c;->u:Lcom/a/a/h/a/d;

    invoke-static {}, Lcom/a/a/h/a/e;->a()Lcom/a/a/h/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/c;

    iget-object v1, p0, Lcom/a/a/c;->u:Lcom/a/a/h/a/d;

    iput-object v1, v0, Lcom/a/a/c;->u:Lcom/a/a/h/a/d;

    :cond_1
    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/c;

    iget-object v0, v0, Lcom/a/a/c;->s:Lcom/a/a/i;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/c;

    invoke-direct {p0}, Lcom/a/a/c;->a()Lcom/a/a/i;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/c;->s:Lcom/a/a/i;

    :cond_2
    iget v0, p0, Lcom/a/a/c;->w:I

    iget v1, p0, Lcom/a/a/c;->v:I

    invoke-static {v0, v1}, Lcom/a/a/j/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/c;

    iget v0, v0, Lcom/a/a/c;->w:I

    iget-object v1, p0, Lcom/a/a/c;->o:Lcom/a/a/c;

    iget v1, v1, Lcom/a/a/c;->v:I

    invoke-static {v0, v1}, Lcom/a/a/j/h;->a(II)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/a/a/c;->o:Lcom/a/a/c;

    iget v1, p0, Lcom/a/a/c;->w:I

    iget v2, p0, Lcom/a/a/c;->v:I

    invoke-virtual {v0, v1, v2}, Lcom/a/a/c;->b(II)Lcom/a/a/c;

    :cond_3
    new-instance v0, Lcom/a/a/h/f;

    invoke-direct {v0, p2}, Lcom/a/a/h/f;-><init>(Lcom/a/a/h/c;)V

    iget-object v1, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/a/a/c;->s:Lcom/a/a/i;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/a/a/c;->a(Lcom/a/a/h/b/j;FLcom/a/a/i;Lcom/a/a/h/c;)Lcom/a/a/h/b;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/a/a/c;->A:Z

    iget-object v2, p0, Lcom/a/a/c;->o:Lcom/a/a/c;

    invoke-direct {v2, p1, v0}, Lcom/a/a/c;->a(Lcom/a/a/h/b/j;Lcom/a/a/h/f;)Lcom/a/a/h/b;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/a/a/c;->A:Z

    invoke-virtual {v0, v1, v2}, Lcom/a/a/h/f;->a(Lcom/a/a/h/b;Lcom/a/a/h/b;)V

    :goto_0
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/a/a/c;->n:Ljava/lang/Float;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/a/a/h/f;

    invoke-direct {v0, p2}, Lcom/a/a/h/f;-><init>(Lcom/a/a/h/c;)V

    iget-object v1, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/a/a/c;->s:Lcom/a/a/i;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/a/a/c;->a(Lcom/a/a/h/b/j;FLcom/a/a/i;Lcom/a/a/h/c;)Lcom/a/a/h/b;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/c;->n:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0}, Lcom/a/a/c;->a()Lcom/a/a/i;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/a/a/c;->a(Lcom/a/a/h/b/j;FLcom/a/a/i;Lcom/a/a/h/c;)Lcom/a/a/h/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/h/f;->a(Lcom/a/a/h/b;Lcom/a/a/h/b;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/a/a/c;->p:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/a/a/c;->s:Lcom/a/a/i;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/a/a/c;->a(Lcom/a/a/h/b/j;FLcom/a/a/i;Lcom/a/a/h/c;)Lcom/a/a/h/b;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Lcom/a/a/i;
    .locals 2

    iget-object v0, p0, Lcom/a/a/c;->s:Lcom/a/a/i;

    sget-object v1, Lcom/a/a/i;->d:Lcom/a/a/i;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/a/a/i;->c:Lcom/a/a/i;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->s:Lcom/a/a/i;

    sget-object v1, Lcom/a/a/i;->c:Lcom/a/a/i;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/a/a/i;->b:Lcom/a/a/i;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/a/a/i;->a:Lcom/a/a/i;

    goto :goto_0
.end method

.method private b(Lcom/a/a/h/b/j;)Lcom/a/a/h/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/b/j",
            "<TTranscodeType;>;)",
            "Lcom/a/a/h/b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/c;->s:Lcom/a/a/i;

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/a/i;->c:Lcom/a/a/i;

    iput-object v0, p0, Lcom/a/a/c;->s:Lcom/a/a/i;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/a/c;->a(Lcom/a/a/h/b/j;Lcom/a/a/h/f;)Lcom/a/a/h/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)Lcom/a/a/h/b/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/a/a/h/b/j",
            "<TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lcom/a/a/j/h;->a()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/a/a/c;->z:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/a/a/c$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/a/a/c;->c:Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/c;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/g;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/a/a/h/b/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/c;->a(Lcom/a/a/h/b/j;)Lcom/a/a/h/b/j;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/a/a/c;->f()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/a/a/c;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/a/a/h/b/j;)Lcom/a/a/h/b/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/a/a/h/b/j",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    invoke-static {}, Lcom/a/a/j/h;->a()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass in a non null Target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/a/a/c;->j:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must first set a model (try #load())"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Lcom/a/a/h/b/j;->c()Lcom/a/a/h/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/a/a/h/b;->d()V

    iget-object v1, p0, Lcom/a/a/c;->e:Lcom/a/a/e/m;

    invoke-virtual {v1, v0}, Lcom/a/a/e/m;->b(Lcom/a/a/h/b;)V

    invoke-interface {v0}, Lcom/a/a/h/b;->a()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/a/a/c;->b(Lcom/a/a/h/b/j;)Lcom/a/a/h/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/a/a/h/b/j;->a(Lcom/a/a/h/b;)V

    iget-object v1, p0, Lcom/a/a/c;->f:Lcom/a/a/e/g;

    invoke-interface {v1, p1}, Lcom/a/a/e/g;->a(Lcom/a/a/e/h;)V

    iget-object v1, p0, Lcom/a/a/c;->e:Lcom/a/a/e/m;

    invoke-virtual {v1, v0}, Lcom/a/a/e/m;->a(Lcom/a/a/h/b;)V

    return-object p1
.end method

.method public b(II)Lcom/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/c",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/a/a/j/h;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/a/a/c;->w:I

    iput p2, p0, Lcom/a/a/c;->v:I

    return-object p0
.end method

.method public b(Lcom/a/a/d/b/b;)Lcom/a/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/b;",
            ")",
            "Lcom/a/a/c",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/c;->x:Lcom/a/a/d/b/b;

    return-object p0
.end method

.method public b(Lcom/a/a/d/b;)Lcom/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b",
            "<TDataType;>;)",
            "Lcom/a/a/c",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/c;->g:Lcom/a/a/g/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->g:Lcom/a/a/g/a;

    invoke-virtual {v0, p1}, Lcom/a/a/g/a;->a(Lcom/a/a/d/b;)V

    :cond_0
    return-object p0
.end method

.method public b(Lcom/a/a/d/c;)Lcom/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c;",
            ")",
            "Lcom/a/a/c",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Signature must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/a/c;->i:Lcom/a/a/d/c;

    return-object p0
.end method

.method public b(Lcom/a/a/d/e;)Lcom/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/e",
            "<TDataType;TResourceType;>;)",
            "Lcom/a/a/c",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/c;->g:Lcom/a/a/g/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->g:Lcom/a/a/g/a;

    invoke-virtual {v0, p1}, Lcom/a/a/g/a;->a(Lcom/a/a/d/e;)V

    :cond_0
    return-object p0
.end method

.method public b(Lcom/a/a/h/a/d;)Lcom/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/d",
            "<TTranscodeType;>;)",
            "Lcom/a/a/c",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Animation factory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/a/c;->u:Lcom/a/a/h/a/d;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/a/a/c",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/c;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/c;->j:Z

    return-object p0
.end method

.method public b(Z)Lcom/a/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/a/a/c",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/a/a/c;->t:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs b([Lcom/a/a/d/g;)Lcom/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/a/a/d/g",
            "<TResourceType;>;)",
            "Lcom/a/a/c",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/a/a/c;->z:Z

    array-length v0, p1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/a/a/c;->y:Lcom/a/a/d/g;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/a/a/d/d;

    invoke-direct {v0, p1}, Lcom/a/a/d/d;-><init>([Lcom/a/a/d/g;)V

    iput-object v0, p0, Lcom/a/a/c;->y:Lcom/a/a/d/g;

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method e()V
    .locals 0

    return-void
.end method

.method f()V
    .locals 0

    return-void
.end method

.method public g()Lcom/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/c",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    iget-object v1, p0, Lcom/a/a/c;->g:Lcom/a/a/g/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/c;->g:Lcom/a/a/g/a;

    invoke-virtual {v1}, Lcom/a/a/g/a;->g()Lcom/a/a/g/a;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/a/a/c;->g:Lcom/a/a/g/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
