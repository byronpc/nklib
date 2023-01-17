%% -------------------------------------------------------------------
%%
%% Copyright (c) 2019 Carlos Gonzalez Florido.  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------

%% ===================================================================
%% Defines
%% ===================================================================

-define(D(T), logger:debug(T)).
-define(D(T,P), logger:debug(T,P)).
-define(I(T), logger:notice(T)).
-define(I(T,P), logger:notice(T,P)).
-define(N(T), logger:notice(T)).
-define(N(T,P), logger:notice(T,P)).
-define(W(T), logger:warning(T)).
-define(W(T,P), logger:warning(T,P)).
-define(E(T), logger:error(T)).
-define(E(T,P), logger:error(T,P)).



%% ===================================================================
%% Records
%% ===================================================================



-record(uri, {
    scheme :: nklib:scheme(),
    user = <<>> :: binary(), 
    pass = <<>> :: binary(), 
    domain = <<"invalid.invalid">> :: binary(), 
    port = 0 :: inet:port_number(),             % 0 means "no port in message"
    path = <<>> :: binary(),
    opts = [] :: list(),
    headers = [] :: list(),
    ext_opts = [] :: list(),
    ext_headers = [] :: list(),
    disp = <<>> :: binary()
}).

