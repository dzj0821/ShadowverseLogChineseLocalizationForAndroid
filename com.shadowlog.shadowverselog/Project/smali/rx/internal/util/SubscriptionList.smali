.class public final Lrx/internal/util/SubscriptionList;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    .line 38
    return-void
.end method

.method public varargs constructor <init>([Lrx/Subscription;)V
    .locals 2
    .param p1, "subscriptions"    # [Lrx/Subscription;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 42
    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    if-nez p0, :cond_1

    .line 121
    :cond_0
    return-void

    .line 96
    :cond_1
    const/4 v1, 0x0

    .line 97
    .local v1, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscription;

    .line 99
    .local v2, "s":Lrx/Subscription;
    :try_start_0
    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .restart local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "s":Lrx/Subscription;
    :cond_3
    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 109
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 110
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4

    .line 111
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "t":Ljava/lang/Throwable;
    throw v3

    .line 113
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v4, Lrx/exceptions/CompositeException;

    const-string v5, "Failed to unsubscribe to 1 or more subscriptions."

    invoke-direct {v4, v5, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v4

    .line 117
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_5
    new-instance v4, Lrx/exceptions/CompositeException;

    const-string v5, "Failed to unsubscribe to 2 or more subscriptions."

    invoke-direct {v4, v5, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v4
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .locals 2
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "unsubscribe":Lrx/Subscription;
    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-eqz v1, :cond_1

    .line 61
    move-object v0, p1

    .line 68
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 73
    :cond_0
    return-void

    .line 63
    :cond_1
    :try_start_1
    iget-object v1, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/List;

    if-nez v1, :cond_2

    .line 64
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 66
    :cond_2
    iget-object v1, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized isUnsubscribed()Z
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    if-eqz v0, :cond_0

    .line 83
    monitor-exit p0

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/SubscriptionList;->unsubscribed:Z

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/List;

    invoke-static {v0}, Lrx/internal/util/SubscriptionList;->unsubscribeFromAll(Ljava/util/Collection;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->subscriptions:Ljava/util/List;

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
