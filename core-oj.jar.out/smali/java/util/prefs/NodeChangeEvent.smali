.class public Ljava/util/prefs/NodeChangeEvent;
.super Ljava/util/EventObject;
.source "NodeChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x6ffaaa71714d271dL


# instance fields
.field private child:Ljava/util/prefs/Preferences;


# direct methods
.method public constructor <init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V
    .locals 0
    .param p1, "parent"    # Ljava/util/prefs/Preferences;
    .param p2, "child"    # Ljava/util/prefs/Preferences;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 62
    iput-object p2, p0, Ljava/util/prefs/NodeChangeEvent;->child:Ljava/util/prefs/Preferences;

    .line 60
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/io/NotSerializableException;

    const-string/jumbo v1, "Not serializable."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/io/NotSerializableException;

    const-string/jumbo v1, "Not serializable."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getChild()Ljava/util/prefs/Preferences;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljava/util/prefs/NodeChangeEvent;->child:Ljava/util/prefs/Preferences;

    return-object v0
.end method

.method public getParent()Ljava/util/prefs/Preferences;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/Preferences;

    return-object v0
.end method
