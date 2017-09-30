.class public Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;
    }
.end annotation


# instance fields
.field private phonenumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest;->phonenumberList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest;->phonenumberList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest;->phonenumberList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPhonenumberList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest$PhoneNumberInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/GetDuidRequest;->phonenumberList:Ljava/util/ArrayList;

    return-object v0
.end method
