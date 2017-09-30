.class public final Lcom/a/a/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/h/b;
.implements Lcom/a/a/h/b/h;
.implements Lcom/a/a/h/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/h/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/h/b;",
        "Lcom/a/a/h/b/h;",
        "Lcom/a/a/h/e;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/a/a/h/a",
            "<****>;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/a/a/d/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/l",
            "<*>;"
        }
    .end annotation
.end field

.field private B:Lcom/a/a/d/b/c$c;

.field private C:J

.field private D:Lcom/a/a/h/a$a;

.field private final b:Ljava/lang/String;

.field private c:Lcom/a/a/d/c;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Lcom/a/a/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/g",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private j:Lcom/a/a/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/g/f",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private k:Lcom/a/a/h/c;

.field private l:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/a/a/i;

.field private p:Lcom/a/a/h/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/b/j",
            "<TR;>;"
        }
    .end annotation
.end field

.field private q:Lcom/a/a/h/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/d",
            "<-TA;TR;>;"
        }
    .end annotation
.end field

.field private r:F

.field private s:Lcom/a/a/d/b/c;

.field private t:Lcom/a/a/h/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/a/d",
            "<TR;>;"
        }
    .end annotation
.end field

.field private u:I

.field private v:I

.field private w:Lcom/a/a/d/b/b;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/a/a/j/h;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/a/a/h/a;->a:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/a/a/g/f;Ljava/lang/Object;Lcom/a/a/d/c;Landroid/content/Context;Lcom/a/a/i;Lcom/a/a/h/b/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/a/a/h/d;Lcom/a/a/h/c;Lcom/a/a/d/b/c;Lcom/a/a/d/g;Ljava/lang/Class;ZLcom/a/a/h/a/d;IILcom/a/a/d/b/b;)Lcom/a/a/h/a;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/g/f",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/a/a/d/c;",
            "Landroid/content/Context;",
            "Lcom/a/a/i;",
            "Lcom/a/a/h/b/j",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/a/a/h/d",
            "<-TA;TR;>;",
            "Lcom/a/a/h/c;",
            "Lcom/a/a/d/b/c;",
            "Lcom/a/a/d/g",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/a/a/h/a/d",
            "<TR;>;II",
            "Lcom/a/a/d/b/b;",
            ")",
            "Lcom/a/a/h/a",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/a/a/h/a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/h/a;

    invoke-direct {v0}, Lcom/a/a/h/a;-><init>()V

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    invoke-direct/range {v0 .. v23}, Lcom/a/a/h/a;->b(Lcom/a/a/g/f;Ljava/lang/Object;Lcom/a/a/d/c;Landroid/content/Context;Lcom/a/a/i;Lcom/a/a/h/b/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/a/a/h/d;Lcom/a/a/h/c;Lcom/a/a/d/b/c;Lcom/a/a/d/g;Ljava/lang/Class;ZLcom/a/a/h/a/d;IILcom/a/a/d/b/b;)V

    return-object v0
.end method

.method private a(Lcom/a/a/d/b/l;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<*>;TR;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/h/a;->p()Z

    move-result v5

    sget-object v0, Lcom/a/a/h/a$a;->d:Lcom/a/a/h/a$a;

    iput-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    iput-object p1, p0, Lcom/a/a/h/a;->A:Lcom/a/a/d/b/l;

    iget-object v0, p0, Lcom/a/a/h/a;->q:Lcom/a/a/h/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->q:Lcom/a/a/h/d;

    iget-object v2, p0, Lcom/a/a/h/a;->l:Ljava/lang/Object;

    iget-object v3, p0, Lcom/a/a/h/a;->p:Lcom/a/a/h/b/j;

    iget-boolean v4, p0, Lcom/a/a/h/a;->z:Z

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/a/a/h/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/h/b/j;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/a/a/h/a;->t:Lcom/a/a/h/a/d;

    iget-boolean v1, p0, Lcom/a/a/h/a;->z:Z

    invoke-interface {v0, v1, v5}, Lcom/a/a/h/a/d;->a(ZZ)Lcom/a/a/h/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/h/a;->p:Lcom/a/a/h/b/j;

    invoke-interface {v1, p2, v0}, Lcom/a/a/h/b/j;->a(Ljava/lang/Object;Lcom/a/a/h/a/c;)V

    :cond_1
    invoke-direct {p0}, Lcom/a/a/h/a;->q()V

    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource ready in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a/a/h/a;->C:J

    invoke-static {v2, v3}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/a/a/d/b/l;->c()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3eb0000000000000L    # 9.5367431640625E-7

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fromCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/a/a/h/a;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/h/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GenericRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/h/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " must not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private b(Lcom/a/a/d/b/l;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/a;->s:Lcom/a/a/d/b/c;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b/c;->a(Lcom/a/a/d/b/l;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/h/a;->A:Lcom/a/a/d/b/l;

    return-void
.end method

.method private b(Lcom/a/a/g/f;Ljava/lang/Object;Lcom/a/a/d/c;Landroid/content/Context;Lcom/a/a/i;Lcom/a/a/h/b/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/a/a/h/d;Lcom/a/a/h/c;Lcom/a/a/d/b/c;Lcom/a/a/d/g;Ljava/lang/Class;ZLcom/a/a/h/a/d;IILcom/a/a/d/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/g/f",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/a/a/d/c;",
            "Landroid/content/Context;",
            "Lcom/a/a/i;",
            "Lcom/a/a/h/b/j",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/a/a/h/d",
            "<-TA;TR;>;",
            "Lcom/a/a/h/c;",
            "Lcom/a/a/d/b/c;",
            "Lcom/a/a/d/g",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/a/a/h/a/d",
            "<TR;>;II",
            "Lcom/a/a/d/b/b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/h/a;->j:Lcom/a/a/g/f;

    iput-object p2, p0, Lcom/a/a/h/a;->l:Ljava/lang/Object;

    iput-object p3, p0, Lcom/a/a/h/a;->c:Lcom/a/a/d/c;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/a/a/h/a;->d:Landroid/graphics/drawable/Drawable;

    move/from16 v0, p13

    iput v0, p0, Lcom/a/a/h/a;->e:I

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/h/a;->h:Landroid/content/Context;

    iput-object p5, p0, Lcom/a/a/h/a;->o:Lcom/a/a/i;

    iput-object p6, p0, Lcom/a/a/h/a;->p:Lcom/a/a/h/b/j;

    iput p7, p0, Lcom/a/a/h/a;->r:F

    iput-object p8, p0, Lcom/a/a/h/a;->x:Landroid/graphics/drawable/Drawable;

    iput p9, p0, Lcom/a/a/h/a;->f:I

    iput-object p10, p0, Lcom/a/a/h/a;->y:Landroid/graphics/drawable/Drawable;

    iput p11, p0, Lcom/a/a/h/a;->g:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/a/a/h/a;->q:Lcom/a/a/h/d;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/a/a/h/a;->k:Lcom/a/a/h/c;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/a/a/h/a;->s:Lcom/a/a/d/b/c;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/a/a/h/a;->i:Lcom/a/a/d/g;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/a/a/h/a;->m:Ljava/lang/Class;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/a/a/h/a;->n:Z

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/a/a/h/a;->t:Lcom/a/a/h/a/d;

    move/from16 v0, p21

    iput v0, p0, Lcom/a/a/h/a;->u:I

    move/from16 v0, p22

    iput v0, p0, Lcom/a/a/h/a;->v:I

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/a/a/h/a;->w:Lcom/a/a/d/b/b;

    sget-object v1, Lcom/a/a/h/a$a;->a:Lcom/a/a/h/a$a;

    iput-object v1, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    if-eqz p2, :cond_2

    const-string v1, "ModelLoader"

    invoke-interface {p1}, Lcom/a/a/g/f;->e()Lcom/a/a/d/c/l;

    move-result-object v2

    const-string v3, "try .using(ModelLoader)"

    invoke-static {v1, v2, v3}, Lcom/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Transcoder"

    invoke-interface {p1}, Lcom/a/a/g/f;->f()Lcom/a/a/d/d/f/c;

    move-result-object v2

    const-string v3, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v1, v2, v3}, Lcom/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Transformation"

    const-string v2, "try .transform(UnitTransformation.get())"

    move-object/from16 v0, p17

    invoke-static {v1, v0, v2}, Lcom/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p23 .. p23}, Lcom/a/a/d/b/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SourceEncoder"

    invoke-interface {p1}, Lcom/a/a/g/f;->c()Lcom/a/a/d/b;

    move-result-object v2

    const-string v3, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v1, v2, v3}, Lcom/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {p23 .. p23}, Lcom/a/a/d/b/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p23 .. p23}, Lcom/a/a/d/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "CacheDecoder"

    invoke-interface {p1}, Lcom/a/a/g/f;->a()Lcom/a/a/d/e;

    move-result-object v2

    const-string v3, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v1, v2, v3}, Lcom/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p23 .. p23}, Lcom/a/a/d/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Encoder"

    invoke-interface {p1}, Lcom/a/a/g/f;->d()Lcom/a/a/d/f;

    move-result-object v2

    const-string v3, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "SourceDecoder"

    invoke-interface {p1}, Lcom/a/a/g/f;->b()Lcom/a/a/d/e;

    move-result-object v2

    const-string v3, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0}, Lcom/a/a/h/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/h/a;->l:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/a/a/h/a;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/h/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/a/a/h/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/a/a/h/a;->p:Lcom/a/a/h/b/j;

    invoke-interface {v1, p1, v0}, Lcom/a/a/h/b/j;->a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/a/a/h/a;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/a/a/h/a;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/a/a/h/a;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/a;->d:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/a/a/h/a;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/a/a/h/a;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/a/a/h/a;->g:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/a/a/h/a;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/a;->y:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/a/a/h/a;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/a/a/h/a;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/a/a/h/a;->f:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/a/a/h/a;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/a;->x:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/a/a/h/a;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private n()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/a;->k:Lcom/a/a/h/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->k:Lcom/a/a/h/c;

    invoke-interface {v0, p0}, Lcom/a/a/h/c;->a(Lcom/a/a/h/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/a;->k:Lcom/a/a/h/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->k:Lcom/a/a/h/c;

    invoke-interface {v0, p0}, Lcom/a/a/h/c;->b(Lcom/a/a/h/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/a;->k:Lcom/a/a/h/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->k:Lcom/a/a/h/c;

    invoke-interface {v0}, Lcom/a/a/h/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/h/a;->k:Lcom/a/a/h/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->k:Lcom/a/a/h/c;

    invoke-interface {v0, p0}, Lcom/a/a/h/c;->c(Lcom/a/a/h/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/h/a;->j:Lcom/a/a/g/f;

    iput-object v1, p0, Lcom/a/a/h/a;->l:Ljava/lang/Object;

    iput-object v1, p0, Lcom/a/a/h/a;->h:Landroid/content/Context;

    iput-object v1, p0, Lcom/a/a/h/a;->p:Lcom/a/a/h/b/j;

    iput-object v1, p0, Lcom/a/a/h/a;->x:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/a/a/h/a;->y:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/a/a/h/a;->d:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/a/a/h/a;->q:Lcom/a/a/h/d;

    iput-object v1, p0, Lcom/a/a/h/a;->k:Lcom/a/a/h/c;

    iput-object v1, p0, Lcom/a/a/h/a;->i:Lcom/a/a/d/g;

    iput-object v1, p0, Lcom/a/a/h/a;->t:Lcom/a/a/h/a/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/h/a;->z:Z

    iput-object v1, p0, Lcom/a/a/h/a;->B:Lcom/a/a/d/b/c$c;

    sget-object v0, Lcom/a/a/h/a;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(II)V
    .locals 12

    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a/a/h/a;->C:J

    invoke-static {v2, v3}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/h/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    sget-object v1, Lcom/a/a/h/a$a;->c:Lcom/a/a/h/a$a;

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/a/a/h/a$a;->b:Lcom/a/a/h/a$a;

    iput-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    iget v0, p0, Lcom/a/a/h/a;->r:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v0, p0, Lcom/a/a/h/a;->r:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v0, p0, Lcom/a/a/h/a;->j:Lcom/a/a/g/f;

    invoke-interface {v0}, Lcom/a/a/g/f;->e()Lcom/a/a/d/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/h/a;->l:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/a/a/d/c/l;->a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load model: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/h/a;->l:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/a/a/h/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/a/a/h/a;->j:Lcom/a/a/g/f;

    invoke-interface {v0}, Lcom/a/a/g/f;->f()Lcom/a/a/d/d/f/c;

    move-result-object v7

    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, p0, Lcom/a/a/h/a;->C:J

    invoke-static {v8, v9}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/h/a;->a(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/h/a;->z:Z

    iget-object v0, p0, Lcom/a/a/h/a;->s:Lcom/a/a/d/b/c;

    iget-object v1, p0, Lcom/a/a/h/a;->c:Lcom/a/a/d/c;

    iget-object v5, p0, Lcom/a/a/h/a;->j:Lcom/a/a/g/f;

    iget-object v6, p0, Lcom/a/a/h/a;->i:Lcom/a/a/d/g;

    iget-object v8, p0, Lcom/a/a/h/a;->o:Lcom/a/a/i;

    iget-boolean v9, p0, Lcom/a/a/h/a;->n:Z

    iget-object v10, p0, Lcom/a/a/h/a;->w:Lcom/a/a/d/b/b;

    move-object v11, p0

    invoke-virtual/range {v0 .. v11}, Lcom/a/a/d/b/c;->a(Lcom/a/a/d/c;IILcom/a/a/d/a/c;Lcom/a/a/g/b;Lcom/a/a/d/g;Lcom/a/a/d/d/f/c;Lcom/a/a/i;ZLcom/a/a/d/b/b;Lcom/a/a/h/e;)Lcom/a/a/d/b/c$c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h/a;->B:Lcom/a/a/d/b/c$c;

    iget-object v0, p0, Lcom/a/a/h/a;->A:Lcom/a/a/d/b/l;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/a/a/h/a;->z:Z

    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a/a/h/a;->C:J

    invoke-static {v2, v3}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/h/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/a/a/d/b/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/h/a;->m:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/a/a/h/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/a/a/h/a;->m:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Lcom/a/a/h/a;->b(Lcom/a/a/d/b/l;)V

    new-instance v2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/a/a/h/a;->m:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/a/a/h/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/a/a/h/a;->n()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/a/a/h/a;->b(Lcom/a/a/d/b/l;)V

    sget-object v0, Lcom/a/a/h/a$a;->d:Lcom/a/a/h/a$a;

    iput-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/a/a/h/a;->a(Lcom/a/a/d/b/l;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "GenericRequest"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GenericRequest"

    const-string v1, "load failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Lcom/a/a/h/a$a;->e:Lcom/a/a/h/a$a;

    iput-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    iget-object v0, p0, Lcom/a/a/h/a;->q:Lcom/a/a/h/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h/a;->q:Lcom/a/a/h/d;

    iget-object v1, p0, Lcom/a/a/h/a;->l:Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/a/h/a;->p:Lcom/a/a/h/b/j;

    invoke-direct {p0}, Lcom/a/a/h/a;->p()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/a/a/h/d;->a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/a/a/h/b/j;Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/a/a/h/a;->b(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/h/a;->C:J

    iget-object v0, p0, Lcom/a/a/h/a;->l:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/h/a;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/a/a/h/a$a;->c:Lcom/a/a/h/a$a;

    iput-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    iget v0, p0, Lcom/a/a/h/a;->u:I

    iget v1, p0, Lcom/a/a/h/a;->v:I

    invoke-static {v0, v1}, Lcom/a/a/j/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/a/a/h/a;->u:I

    iget v1, p0, Lcom/a/a/h/a;->v:I

    invoke-virtual {p0, v0, v1}, Lcom/a/a/h/a;->a(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/a/a/h/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/a/a/h/a;->j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/a/a/h/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/h/a;->p:Lcom/a/a/h/b/j;

    invoke-direct {p0}, Lcom/a/a/h/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/h/b/j;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a/a/h/a;->C:J

    invoke-static {v2, v3}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/h/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/a/a/h/a;->p:Lcom/a/a/h/b/j;

    invoke-interface {v0, p0}, Lcom/a/a/h/b/j;->a(Lcom/a/a/h/b/h;)V

    goto :goto_1
.end method

.method c()V
    .locals 1

    sget-object v0, Lcom/a/a/h/a$a;->f:Lcom/a/a/h/a$a;

    iput-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    iget-object v0, p0, Lcom/a/a/h/a;->B:Lcom/a/a/d/b/c$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->B:Lcom/a/a/d/b/c$c;

    invoke-virtual {v0}, Lcom/a/a/d/b/c$c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/h/a;->B:Lcom/a/a/d/b/c$c;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/a/a/j/h;->a()V

    iget-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    sget-object v1, Lcom/a/a/h/a$a;->g:Lcom/a/a/h/a$a;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/h/a;->c()V

    iget-object v0, p0, Lcom/a/a/h/a;->A:Lcom/a/a/d/b/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/h/a;->A:Lcom/a/a/d/b/l;

    invoke-direct {p0, v0}, Lcom/a/a/h/a;->b(Lcom/a/a/d/b/l;)V

    :cond_1
    invoke-direct {p0}, Lcom/a/a/h/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/h/a;->p:Lcom/a/a/h/b/j;

    invoke-direct {p0}, Lcom/a/a/h/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/h/b/j;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget-object v0, Lcom/a/a/h/a$a;->g:Lcom/a/a/h/a$a;

    iput-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    goto :goto_0
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/h/a;->d()V

    sget-object v0, Lcom/a/a/h/a$a;->h:Lcom/a/a/h/a$a;

    iput-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    return-void
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    sget-object v1, Lcom/a/a/h/a$a;->b:Lcom/a/a/h/a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    sget-object v1, Lcom/a/a/h/a$a;->c:Lcom/a/a/h/a$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    sget-object v1, Lcom/a/a/h/a$a;->d:Lcom/a/a/h/a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/h/a;->g()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    sget-object v1, Lcom/a/a/h/a$a;->f:Lcom/a/a/h/a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    sget-object v1, Lcom/a/a/h/a$a;->g:Lcom/a/a/h/a$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/h/a;->D:Lcom/a/a/h/a$a;

    sget-object v1, Lcom/a/a/h/a$a;->e:Lcom/a/a/h/a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
