.class Lcom/a/a/d/b/g;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/a/a/d/c;IILcom/a/a/d/e;Lcom/a/a/d/e;Lcom/a/a/d/g;Lcom/a/a/d/f;Lcom/a/a/d/d/f/c;Lcom/a/a/d/b;)Lcom/a/a/d/b/f;
    .locals 11

    new-instance v0, Lcom/a/a/d/b/f;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/a/a/d/b/f;-><init>(Ljava/lang/String;Lcom/a/a/d/c;IILcom/a/a/d/e;Lcom/a/a/d/e;Lcom/a/a/d/g;Lcom/a/a/d/f;Lcom/a/a/d/d/f/c;Lcom/a/a/d/b;)V

    return-object v0
.end method
