.class public final Lrx/subjects/PublishSubject;
.super Lrx/subjects/Subject;
.source "PublishSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final state:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 75
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/PublishSubject;->nl:Lrx/internal/operators/NotificationLite;

    .line 79
    iput-object p2, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    .line 80
    return-void
.end method

.method public static create()Lrx/subjects/PublishSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/PublishSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 63
    .local v0, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    new-instance v1, Lrx/subjects/PublishSubject$1;

    invoke-direct {v1, v0}, Lrx/subjects/PublishSubject$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 71
    new-instance v1, Lrx/subjects/PublishSubject;

    invoke-direct {v1, v0, v0}, Lrx/subjects/PublishSubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V

    return-object v1
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 6

    .prologue
    .line 84
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v2, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v2, v2, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lrx/subjects/PublishSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    .line 86
    .local v1, "n":Ljava/lang/Object;
    iget-object v2, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v2, v1}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 87
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v5, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v5, v5, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, v1, v5}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v1    # "n":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    const/4 v5, 0x0

    .line 95
    iget-object v4, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v4, v4, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v4, :cond_2

    .line 96
    iget-object v4, p0, Lrx/subjects/PublishSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    .line 97
    .local v3, "n":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 98
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v4, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v4, v3}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v0, v6, v4

    .line 100
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :try_start_0
    iget-object v8, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v8, v8, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, v3, v8}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e2":Ljava/lang/Throwable;
    if-nez v2, :cond_0

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .restart local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    .end local v0    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v1    # "e2":Ljava/lang/Throwable;
    :cond_1
    if-eqz v2, :cond_2

    .line 109
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 110
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 116
    .end local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v3    # "n":Ljava/lang/Object;
    :cond_2
    return-void

    .line 112
    .restart local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v3    # "n":Ljava/lang/Object;
    :cond_3
    new-instance v4, Lrx/exceptions/CompositeException;

    const-string v5, "Errors while emitting PublishSubject.onError"

    invoke-direct {v4, v5, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v4
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 121
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    invoke-virtual {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onNext(Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :cond_0
    return-void
.end method
