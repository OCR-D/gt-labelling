<?xml version="1.0" encoding="UTF-8"?>
  <stylesheet>
   <template match="label" name="age'">
      <choose>
         <when test="@lev1='age'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='historical'or @lev2='contemporary'or @lev2='ancient'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=historical'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="automation'">
      <choose>
         <when test="@lev1='automation'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='manual'or @lev2='automated'or @lev2='assisted'">
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="production-method'">
      <choose>
         <when test="@lev1='production-method'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='manual'or @lev2='machine'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=machine'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=machine'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="content-type'">
      <choose>
         <when test="@lev1='content-type'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='data'or @lev2='metadata'or @lev2='settings'or @lev2='model'or @lev2='lexicon'or @lev2='corpus'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=metadata'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=metadata'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=metadata'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=metadata'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=metadata'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=metadata'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="precision'">
      <choose>
         <when test="@lev1='precision'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='ground-truth'or @lev2='measured'or @lev2='estimated'or @lev2='random'or @lev2='fuzzy'">
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="license'">
      <choose>
         <when test="@lev1='license'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='free'or @lev2='paid-for'or @lev2='openSource'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=free'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=paid-for'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=paid-for'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=paid-for'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="platform'">
      <choose>
         <when test="@lev1='platform'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='windows'or @lev2='macos'or @lev2='linux'or @lev2='platform-independent'or @lev2='mobile'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=platform-independent'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=platform-independent'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=mobile'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=mobile'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="content-encoding'">
      <choose>
         <when test="@lev1='content-encoding'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='textual'or @lev2='structured'or @lev2='image'or @lev2='mathematical'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=textual'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=textual'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=structured'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=image'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=image'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=mathematical'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=mathematical'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="activityDomain'">
      <choose>
         <when test="@lev1='activityDomain'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='computing'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=computing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=computing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=computing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=computing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=computing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=computing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="processingLevel'">
      <choose>
         <when test="@lev1='processingLevel'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='low-level'or @lev2='high-level'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=high-level'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=high-level'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=high-level'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="dataTransformation'">
      <choose>
         <when test="@lev1='dataTransformation'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='acquisition'or @lev2='conversion'or @lev2='segmentation'or @lev2='enhancement'or @lev2='enrichment'or @lev2='extraction'or @lev2='visualisation'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=enrichment'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="adaptability'">
      <choose>
         <when test="@lev1='adaptability'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='configurable'or @lev2='trainable'or @lev2='interactive'or @lev2='generic'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=trainable'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=trainable'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="maturity'">
      <choose>
         <when test="@lev1='maturity'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='stable'or @lev2='experimental'or @lev2='industrial'">
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="originalSource'">
      <choose>
         <when test="@lev1='originalSource'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='produced'or @lev2='captured'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=produced'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=produced'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=captured'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="acquisition'">
      <choose>
         <when test="@lev1='acquisition'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='analogToDigital'or @lev2='copied'or @lev2='synthesis'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=analogToDigital'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=analogToDigital'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=copied'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=copied'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=copied'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=copied'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="contentOfInterest'">
      <choose>
         <when test="@lev1='contentOfInterest'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='visual'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=visual'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=visual'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=visual'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=visual'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="granularity'">
      <choose>
         <when test="@lev1='granularity'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='physical'or @lev2='logical'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=physical'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=physical'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=logical'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=logical'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="condition'">
      <choose>
         <when test="@lev1='condition'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='noise'or @lev2='production-related'or @lev2='wear'or @lev2='ageing'or @lev2='acquisition'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=noise'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=noise'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=production-related'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=production-related'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=wear'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=wear'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=ageing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=ageing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=ageing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=ageing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=ageing'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=acquisition'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=acquisition'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=acquisition'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="data-attributes'">
      <choose>
         <when test="@lev1='data-attributes'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='language'or @lev2='document-related'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=language'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=language'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=document-related'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=document-related'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="topic'">
      <choose>
         <when test="@lev1='topic'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='economy'or @lev2='social-science'or @lev2='engineering'or @lev2='media'or @lev2='computing'">
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=economy'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=social-science'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=social-science'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=engineering'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=engineering'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=engineering'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=engineering'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <when test="@lev3!=''">
                           <choose>
                              <when test="@lev2=media'">
                                 <choose>
                                    <when test="@lev3='medieval'">@age lev3 korrekt</when>
                                    <otherwise>@age lev3 Fehler</otherwise>
                                 </choose>
                              </when>
                           </choose>
                        </when>
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
   <template match="label" name="user-groups'">
      <choose>
         <when test="@lev1='user-groups'">
            <choose>
               <when test="@lev2!=''">
                  <choose>
                     <when test="@lev2='admins'or @lev2='workflow-experts'or @lev2='domain-experts'">
                        <otherwise/>
                     </when>
                  </choose>
                  <otherwise/>
               </when>
            </choose>
         </when>
      </choose>
   </template>
</stylesheet>
  
    
    
    
    
    
    
    
    
  
  
    
    
    
    
    
    
    
    
    
    
    
    
  
  
    
  
  
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
  
  
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
    
      
    
  

