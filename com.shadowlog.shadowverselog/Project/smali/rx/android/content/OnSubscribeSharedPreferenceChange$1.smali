.class Lrx/android/content/OnSubscribeSharedPreferenceChange$1;
.super Ljava/lang/Object;
.source "OnSubscribeSharedPreferenceChange.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/content/OnSubscribeSharedPreferenceChange;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/content/OnSubscribeSharedPreferenceChange;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/content/OnSubscribeSharedPreferenceChange;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/android/content/OnSubscribeSharedPreferenceChange;

    .prologue
    .line 32
    iput-object p1, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$1;->this$0:Lrx/android/content/OnSubscribeSharedPreferenceChange;

    iput-object p2, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 36
    return-void
.end method
