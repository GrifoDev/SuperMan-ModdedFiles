.class final Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;
.super Ljava/beans/ChangeListenerMap;
.source "PropertyChangeSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/beans/PropertyChangeSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PropertyChangeListenerMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/beans/ChangeListenerMap",
        "<",
        "Ljava/beans/PropertyChangeListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/beans/PropertyChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/beans/PropertyChangeListener;

    sput-object v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->EMPTY:[Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/beans/ChangeListenerMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;
    .locals 1

    :goto_0
    instance-of v0, p1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object p1

    check-cast p1, Ljava/beans/PropertyChangeListener;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic extract(Ljava/util/EventListener;)Ljava/util/EventListener;
    .locals 1

    check-cast p1, Ljava/beans/PropertyChangeListener;

    invoke-virtual {p0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Ljava/beans/PropertyChangeListener;
    .locals 1

    if-lez p1, :cond_0

    new-array v0, p1, [Ljava/beans/PropertyChangeListener;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->EMPTY:[Ljava/beans/PropertyChangeListener;

    goto :goto_0
.end method

.method protected bridge synthetic newArray(I)[Ljava/util/EventListener;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->newArray(I)[Ljava/beans/PropertyChangeListener;

    move-result-object v0

    return-object v0
.end method

.method protected newProxy(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;
    .locals 1

    new-instance v0, Ljava/beans/PropertyChangeListenerProxy;

    invoke-direct {v0, p1, p2}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-object v0
.end method

.method protected bridge synthetic newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;
    .locals 1

    check-cast p2, Ljava/beans/PropertyChangeListener;

    invoke-virtual {p0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->newProxy(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object v0

    return-object v0
.end method
