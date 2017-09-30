.class public Lcom/samsung/android/sdk/ssf/account/io/StubUpdateCheckList;
.super Lcom/samsung/android/sdk/ssf/account/io/entry/Entry;


# instance fields
.field public appInfo:Ljava/util/ArrayList;
    .annotation runtime Lcom/samsung/android/sdk/ssf/account/io/entry/EntryField;
        type = Lcom/samsung/android/sdk/ssf/account/io/entry/StubUpdateCheck;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/entry/StubUpdateCheck;",
            ">;"
        }
    .end annotation
.end field

.field public resultCode:Ljava/lang/String;

.field public resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/account/io/entry/Entry;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/StubUpdateCheckList;->appInfo:Ljava/util/ArrayList;

    return-void
.end method
