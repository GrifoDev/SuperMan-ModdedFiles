.class Ljava/io/ObjectStreamClass$ClassDataSlot;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassDataSlot"
.end annotation


# instance fields
.field final desc:Ljava/io/ObjectStreamClass;

.field final hasData:Z


# direct methods
.method constructor <init>(Ljava/io/ObjectStreamClass;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    iput-boolean p2, p0, Ljava/io/ObjectStreamClass$ClassDataSlot;->hasData:Z

    return-void
.end method
