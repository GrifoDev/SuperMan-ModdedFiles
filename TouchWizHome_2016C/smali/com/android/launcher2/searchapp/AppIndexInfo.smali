.class public Lcom/android/launcher2/searchapp/AppIndexInfo;
.super Ljava/lang/Object;
.source "AppIndexInfo.java"


# instance fields
.field private mAppname:Ljava/lang/String;

.field private mIndex:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AppIndexInfo;->mAppname:Ljava/lang/String;

    iput p2, p0, Lcom/android/launcher2/searchapp/AppIndexInfo;->mIndex:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/searchapp/AppIndexInfo;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AppIndexInfo;->mAppname:Ljava/lang/String;

    return-object v0
.end method
