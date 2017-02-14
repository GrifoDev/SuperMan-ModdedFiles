.class public Lcom/samsung/android/smartface/FaceInfo$Person;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/FaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Person"
.end annotation


# instance fields
.field public face:Lcom/samsung/android/smartface/FaceInfo$Face;

.field public personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    return-void
.end method
