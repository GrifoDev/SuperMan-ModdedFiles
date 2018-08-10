.class public Lcom/samsung/android/share/executor/data/App;
.super Ljava/lang/Object;
.source "App.java"


# instance fields
.field private appName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/App;->appName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/App;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/App;->appName:Ljava/lang/String;

    return-void
.end method
