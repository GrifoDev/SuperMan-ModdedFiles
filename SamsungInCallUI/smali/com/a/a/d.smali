.class public Lcom/a/a/d;
.super Lcom/a/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/c",
        "<TModelType;TDataType;TResourceType;TResourceType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/a/a/d/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/l",
            "<TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/a/a/j$c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/a/a/g;Ljava/lang/Class;Lcom/a/a/d/c/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/e/m;Lcom/a/a/e/g;Lcom/a/a/j$c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/a/a/g;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/a/a/d/c/l",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/a/a/e/m;",
            "Lcom/a/a/e/g;",
            "Lcom/a/a/j$c;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/a/a/d/d/f/e;->b()Lcom/a/a/d/d/f/c;

    move-result-object v1

    invoke-static {p2, p4, p5, p6, v1}, Lcom/a/a/d;->a(Lcom/a/a/g;Lcom/a/a/d/c/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/c;)Lcom/a/a/g/f;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p6

    move-object v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/a/a/g/f;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/e/m;Lcom/a/a/e/g;)V

    iput-object p4, p0, Lcom/a/a/d;->g:Lcom/a/a/d/c/l;

    iput-object p5, p0, Lcom/a/a/d;->h:Ljava/lang/Class;

    iput-object p6, p0, Lcom/a/a/d;->i:Ljava/lang/Class;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/a/a/d;->j:Lcom/a/a/j$c;

    return-void
.end method

.method private static a(Lcom/a/a/g;Lcom/a/a/d/c/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/c;)Lcom/a/a/g/f;
    .locals 2
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
            "Lcom/a/a/g;",
            "Lcom/a/a/d/c/l",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Lcom/a/a/d/d/f/c",
            "<TZ;TR;>;)",
            "Lcom/a/a/g/f",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/a/a/g;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/g/b;

    move-result-object v0

    new-instance v1, Lcom/a/a/g/e;

    invoke-direct {v1, p1, p4, v0}, Lcom/a/a/g/e;-><init>(Lcom/a/a/d/c/l;Lcom/a/a/d/d/f/c;Lcom/a/a/g/b;)V

    return-object v1
.end method
