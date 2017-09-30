.class Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field attributes:Ljava/util/List;

.field hasMoreChildren:Z

.field name:Ljava/lang/String;

.field parent:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;-><init>()V

    return-void
.end method
