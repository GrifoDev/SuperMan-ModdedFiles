.class public Lcom/thoughtworks/xstream/core/util/TypedNull;
.super Ljava/lang/Object;
.source "TypedNull.java"


# instance fields
.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/TypedNull;->type:Ljava/lang/Class;

    .line 27
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/TypedNull;->type:Ljava/lang/Class;

    return-object v0
.end method
