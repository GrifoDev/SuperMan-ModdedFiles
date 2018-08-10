.class public Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
.super Ljava/lang/Object;
.source "GroupItem.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mGroupAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mGroupAttribute:Ljava/util/ArrayList;

    iput p1, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mIndex:I

    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttribute(I)Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mGroupAttribute:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;

    return-object v0
.end method

.method public getAttributeInfoNum()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mGroupAttribute:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public pushAttribute(II[B)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->mGroupAttribute:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;-><init>(II[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
