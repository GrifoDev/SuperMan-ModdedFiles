.class Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackElement"
.end annotation


# instance fields
.field status:I

.field final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    iput p2, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    return-void
.end method
