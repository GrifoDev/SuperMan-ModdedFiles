.class public Ljavax/net/ssl/SSLSessionBindingEvent;
.super Ljava/util/EventObject;
.source "SSLSessionBindingEvent.java"


# static fields
.field private static final serialVersionUID:J = 0xe2c21a1fb80a9L


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljavax/net/ssl/SSLSessionBindingEvent;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLSessionBindingEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    return-object v0
.end method
