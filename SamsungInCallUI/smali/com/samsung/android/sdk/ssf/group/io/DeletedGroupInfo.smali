.class public Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;
.super Ljava/lang/Object;


# instance fields
.field protected deleted:I

.field protected id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;->deleted:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setDeleted(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;->deleted:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;->id:Ljava/lang/String;

    return-void
.end method
