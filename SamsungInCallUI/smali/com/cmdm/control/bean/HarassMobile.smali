.class public Lcom/cmdm/control/bean/HarassMobile;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "HarassMobile"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6807c9067ded077dL


# instance fields
.field private aa:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "mobile"
    .end annotation
.end field

.field public mobileDes:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "mobileDes"
    .end annotation
.end field

.field public typeBackgroundUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "typeBackgroundUrl"
    .end annotation
.end field

.field public typeId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "typeId"
    .end annotation
.end field

.field public typeName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "typeName"
    .end annotation
.end field

.field public typeThumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "typeThumbnailUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/HarassMobile;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getGuishudi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/HarassMobile;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/HarassMobile;->date:Ljava/lang/String;

    return-void
.end method

.method public setGuishudi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/HarassMobile;->aa:Ljava/lang/String;

    return-void
.end method
